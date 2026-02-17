void MatrixMultiplication_Software(int **A, int **B,int **C, int M, int N, int K)
{
    int sum = 0;
    for(int i = 0; i < M; i++){
        for(int j = 0; j < N; j++){
            for(int k = 0; k < K; k++)
                sum+= A[i][k]*B[k][j];
            C[i][j] = sum;
            sum = 0;
        }
    }
}