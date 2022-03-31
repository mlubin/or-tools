#!/bin/bash

source gbash.sh || exit
source module gbash_unit.sh

function test::operations_research_examples::cvrptw_with_time_dependent_costs() {
  declare -r DIR="${TEST_SRCDIR}/google3/ortools/routing/samples"
  EXPECT_SUCCEED '${DIR}/cvrptw_with_time_dependent_costs --vrp_use_deterministic_random_seed'
}

gbash::unit::main "$@"
