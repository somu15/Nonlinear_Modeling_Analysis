proc Sleep {N} {
   after [expr {int($N * 1000)}]
}