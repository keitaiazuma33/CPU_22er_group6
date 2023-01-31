#include <stdio.h>

int main(void)
{
	FILE * fp_calculate = fopen("finv_calculate.txt", "w");
    FILE * fp_data = fopen("finv_data.coe", "w");

    fprintf(fp_data, "memory_initialization_radix=2;\nmemory_initialization_vector=\n");

    for (int i = 0; i < 1024; i++)
    {
        double left_end  = (double)(1024)/(double)(1024+i);
        double right_end = (double)1024/(double)(1024+i+1);
        double gradient  = -(left_end - right_end)*(double)1024;
        double diff      = (left_end + right_end)/(double)2 - (double)(1024)/(double)(1024.5+i);
        double intersect = left_end - ((double)1 + i * (double)1/(double)1024) * gradient - diff/(double)2;
        
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
        
        for (int k = 0; k < 8; k++)
        {
            fprintf(fp_calculate, "_");
        }
        for (int k = 23; k >= 11; k--)
        {
            fprintf(fp_calculate, "%d", (gradient_print.i >> k) & 1);
        }
        for (int k = 0; k < 11; k++)
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

        for (int k = 23; k >= 11; k--)
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
