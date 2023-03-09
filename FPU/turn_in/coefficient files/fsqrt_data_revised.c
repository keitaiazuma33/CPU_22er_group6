#include <stdio.h>
#include <stdlib.h>
#include <math.h>

long power(int k)
{
	long ans = 1;
	for (int i = 0; i < k; i++)
	{
		ans *= 2;
	}
	return ans;
}

long convert_to_low_accuracy(long gradient)
{
	long ans;
	ldiv_t d;
	
	d = ldiv( gradient, power(39) );
	
	ans = gradient - d.rem;
	return ans;
}

int main(void)
{
	FILE * fp_calculate = fopen("fsqrt_calculate_revised.txt", "w");
    FILE * fp_data = fopen("fsqrt_data_revised.coe", "w");

    fprintf(fp_data, "memory_initialization_radix=2;\nmemory_initialization_vector=\n");

    union { double d; long l; } gradient;
	union { double d; long l; } gradient_low_accuracy;

    for (int i = 0; i < 1024; i++)
    {
        double diff;
        double intersect;

        if (i < 512)
        {
            double left_x  = (double)1 + ((double)1/(double)512) * (double)i;
            double right_x = (double)1 + ((double)1/(double)512) * (double)(i+1);
            double middle_x= (double)1 + ((double)1/(double)1024) * (double)(2*i+1);
            double left_y  = (double)sqrt(left_x);
            double right_y = (double)sqrt(right_x);
            double middle_y = (double)sqrt(middle_x);
            gradient.d  = (double)(512*right_y - 512*left_y);
            gradient_low_accuracy.l = convert_to_low_accuracy(gradient.l);
            diff      = middle_y - ((left_y + right_y)/(double)2);
            intersect = (left_y + (diff/(double)2)) - ((double)gradient_low_accuracy.d * (double)((float)left_x));
        }
        else
        {
            double left_x  = (double)2 + ((double)2/(double)512) * (double)(i-512);
            double right_x = (double)2 + ((double)2/(double)512) * (double)(i-512+1);
            double middle_x= (double)2 + ((double)2/(double)1024) * (double)(2*(i-512)+1);
            double left_y  = (double)sqrt(left_x);
            double right_y = (double)sqrt(right_x);
            double middle_y = (double)sqrt(middle_x);
            gradient.d  = (double)(256*right_y - 256*left_y);
            gradient_low_accuracy.l = convert_to_low_accuracy(gradient.l);
            diff      = middle_y - ((left_y + right_y)/(double)2);
            intersect = (left_y + (diff/(double)2)) - ((double)gradient_low_accuracy.d * (double)((float)left_x));
        }
        
        //	ファイルに指定フォーマットで文字列を生成
        union { float f; int i; } gradient_print;
        union { float f; int i; } gradient_print2;
        union { float f; int i; } intersect_print;
        
        gradient_print.f = (float)gradient.d;
        gradient_print2.f = (float)gradient_low_accuracy.d;
        intersect_print.f = (float)intersect;
        
        //結果表示　(小数点）
        fprintf(fp_calculate, "%f %f\n", gradient_print.f, intersect_print.f);
		fprintf(fp_calculate, "%f %f\n", gradient_print2.f, intersect_print.f);
        
		//浮動小数点表示１回目
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
		
        //浮動小数点表示２回目
        for (int k = 31; k >= 0; k--)
        {
            fprintf(fp_calculate, "%d", (gradient_print2.i >> k) & 1);
        }
        fprintf(fp_calculate, " ");
        for (int k = 31; k >= 0; k--)
        {
            fprintf(fp_calculate, "%d", (intersect_print.i >> k) & 1);
        }
        
        fprintf(fp_calculate, "\n");
        
        //浮動小数点表示　穴あき１回目
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
		
        //浮動小数点表示　穴あき　２回目
        for (int k = 0; k < 9; k++)
        {
            fprintf(fp_calculate, "_");
        }
        for (int k = 22; k >= 10; k--)
        {
            fprintf(fp_calculate, "%d", (gradient_print2.i >> k) & 1);
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