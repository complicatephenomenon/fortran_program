program test_module_aa
  use aa !, only : fourvectordot
  implicit none
  real(dp),dimension(1:2) :: upper, lower
  real(dp)                :: jacobianfactor
  S = 13.d0
  sqrts = sqrt(S)
  p3(0) = sqrts
  p3(1) = 0 
  p3(2) = 0 
  p3(3) = 0 
  p4(0) = sqrts
  p4(1) = 0 
  p4(2) = 0 
  p4(3) = 0 
  write(*,*) fourvectordot(p3,p4)
  
  upper(1) = 2    !The compiler knows that upper(1)=1.0000000000000000
  lower(1) = 1
  upper(2) = 2
  lower(2) = 1
  call jacobian(jacobianfactor,upper,lower)
  write(*,*)jacobianfactor
  write(*,*)upper(1)
end program test_module_aa

include"process.f90"
!------------------------------------------------------------------
! once I make the program run, I am nearly exhusted have no demands
! in optimizing it furthermore    
!------------------------------------------------------------------