PROGRAM A_descriptor
  USE face
  IMPLICIT NONE

  CHARACTER(LEN = 5) :: a = "12345"
  CHARACTER          :: b = "*"
  LOGICAL            :: t = .TRUE., f= .FALSE.
  WRITE(*,'(A5)') colorize( a, color_fg='red')
  WRITE(*,'(A6)') a
  WRITE(*,'(A7)') a
  WRITE(*,'(A3)') b
  WRITE(*,'(A4)') b

  WRITE(*,'(L1,L2)') t, f
END PROGRAM A_descriptor

!---------------------------------------------------
!rAw
!A is for CHARACTER
!w is the width of field, which indicates that a character string should be
!printed with w positions.

!use face
!print '(A)', colorize('Hello', color_fg='red')//colorize(' World', color_fg='blue', style='underline_on')
! FoBiS.py build -ext_libs forbear --lib_dir /path_to_forbear/static/ --include /path_to_forbear/static/mod/
