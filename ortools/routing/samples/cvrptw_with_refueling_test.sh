#!/bin/bash

source gbash.sh || exit
source module gbash_unit.sh

function test::operations_research_examples::cvrptw_with_refueling() {
  declare -r DIR="${TEST_SRCDIR}/google3/ortools/routing/samples"
  EXPECT_SUCCEED "${DIR}/cvrptw_with_refueling\
    --vrp_use_deterministic_random_seed --cp_random_seed=144"
}

gbash::unit::main "$@"
