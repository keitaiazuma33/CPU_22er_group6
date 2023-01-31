#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(void)
{
	FILE * fp_calculate = fopen("fsqrt_calculate.txt", "w");
    FILE * fp_data = fopen("fsqrt_data.coe", "w");

    fprintf(fp_data, "memory_initialization_radix=2;\nmemory_initialization_vector=\n");

    for (int i = 0; i < 1024; i++)
    {
        double left_x;
        double right_x;
        double middle_x;
        double left_y;
        double right_y;
        double middle_y;
        double gradient;
        double diff;
        double intersect;

        if (i < 512)
        {
            left_x  = (double)1 + ((double)1/(double)512) * (double)i;
            right_x = (double)1 + ((double)1/(double)512) * (double)(i+1);
            middle_x= (double)1 + ((double)1/(double)1024) * (double)(2*i+1);
            left_y  = (double)sqrt(left_x);
            right_y = (double)sqrt(right_x);
            middle_y = (double)sqrt(middle_x);
            gradient  = (double)(512*right_y - 512*left_y);
            diff      = middle_y - ((left_y + right_y)/(double)2);
            intersect = left_y + (diff/(double)2) - ((double)gradient * (double)left_x);
        }
        else
        {
            left_x  = (double)2 + ((double)2/(double)512) * (double)(i-512);
            right_x = (double)2 + ((double)2/(double)512) * (double)(i-512+1);
            middle_x= (double)2 + ((double)2/(double)1024) * (double)(2*(i-512)+1);
            left_y  = (double)sqrt(left_x);
            right_y = (double)sqrt(right_x);
            middle_y = (double)sqrt(middle_x);
            gradient  = (double)(256*right_y - 256*left_y);
            diff      = middle_y - ((left_y + right_y)/(double)2);
            intersect = left_y + (diff/(double)2) - ((double)gradient * (double)left_x);
        }
        
        //	ファイルに指定フォーマットで文字列を生成
        union { float f; int i; } gradient_print;
        union { float f; int i; } intersect_print;
        
        gradient_print.f = (float)gradient;
        intersect_print.f = (float)intersect;
        
        fprintf(fp_calculate, "%f %f\n", gradient_print.f, intersect_print.f);
        
        for (int k = 31; k >= 0; k--)
        {
            fprintf(fp_calculate, "%d", (gradient_print.i >> k) & 1);
        }
        fprintf(fp_calculate, " ");
        for (int k = 31; k >= 0; k--)
        {
            fprintf(fp_calculate, "%d", (intersect_print.i >> k) & 1);
        }
        fprintf(fp_calculate, "\n");
        
        for (int k = 0; k < 9; k++)
        {
            fprintf(fp_calculate, "_");
        }
        for (int k = 22; k >= 10; k--)
        {
            fprintf(fp_calculate, "%d", (gradient_print.i >> k) & 1);
        }
        for (int k = 0; k < 10; k++)
        {
            fprintf(fp_calculate, "_");
        }
        fprintf(fp_calculate, " ");
        for (int k = 0; k < 9; k++)
        {
            fprintf(fp_calculate, "_");
        }
        for (int k = 22; k >= 0; k--)
        {
            fprintf(fp_calculate, "%d", (intersect_print.i >> k) & 1);
        }
        fprintf(fp_calculate, "\n");

        for (int k = 22; k >= 10; k--)
        {
            fprintf(fp_data, "%d", (gradient_print.i >> k) & 1);
        }
        for (int k = 22; k >= 0; k--)
        {
            fprintf(fp_data, "%d", (intersect_print.i >> k) & 1);
        }
        if (i < 1023)
        {
            fprintf(fp_data, ",\n");
        }
        else
        {
            fprintf(fp_data, ";");
        }
    }

	fclose(fp_calculate);
    fclose(fp_data);

	return 0;
}
