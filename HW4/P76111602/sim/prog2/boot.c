void boot() {
  extern unsigned int _dram_i_start;
  extern unsigned int _dram_i_end;
  extern unsigned int _imem_start;

  extern unsigned int __sdata_start;
  extern unsigned int __sdata_end;
  extern unsigned int __sdata_paddr_start;

  extern unsigned int __data_start;
  extern unsigned int __data_end;
  extern unsigned int __data_paddr_start;

  int i;
	int len ;

	len = (&_dram_i_end) - (&_dram_i_start) + 1;
	for(i = 0; i < len; i++)
		(&_imem_start)[i] = (&_dram_i_start)[i];

	len = (&__sdata_end) - (&__sdata_start) + 1;
	for(i = 0; i < len; i++)
		(&__sdata_start)[i] = (&__sdata_paddr_start)[i];

	len = (&__data_end) - (&__data_start) + 1;
	for(i = 0; i < len; i++)
		(&__data_start)[i] = (&__data_paddr_start)[i];
}
