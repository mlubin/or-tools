#!/bin/bash

source gbash.sh || exit
source module gbash_unit.sh

function test::operations_research_examples::cvrptw() {
  declare -r DIR="${TEST_SRCDIR}/google3/ortools/routing/samples"
  EXPECT_SUCCEED '${DIR}/cvrp_disjoint_tw --vrp_use_deterministic_random_seed'
}

gbash::unit::main "$@"
