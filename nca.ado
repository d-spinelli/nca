*! nca v1.1 04/22/2025
program define nca, eclass
syntax [anything] [if] [in] [, *]
version 17
if !replay() {
	nca_estimate `0' 
	if (e(testrep)>0)  nca_perm,reps(`e(testrep)')
}
else { // replay
	if "`e(cmd)'"!="nca" error 301
}
ereturn hidden local est_cmd=	"nca_estimate `0' "
nca_display, `options' 
end

