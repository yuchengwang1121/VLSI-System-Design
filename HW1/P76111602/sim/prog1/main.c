
int main(void ){
    extern int _test_start;
    extern int array_size;
    extern int array_addr; 
    int i,j;
    int min, tmp;
    
    for (i=0; i<array_size-1; i++)      //for each element
    {
        min = i;                        //let A[i] be head

        for(j=i+1; j<array_size; j++)   //for each element after head
        {
            if((&array_addr)[j] < (&array_addr)[min])   //if A[j] < A[min]
                min = j;                                //change min to j
        }

        //SWAP
        tmp = (&array_addr)[min];
        (&array_addr)[min] = (&array_addr)[i];
        (&array_addr)[i] = tmp;

        //put the A[i] to test[i]
        (&_test_start)[i] = (&array_addr)[i];
    }

    //give last element to test list
    (&_test_start)[array_size - 1] = (&array_addr)[array_size - 1];

    return 0;
}
