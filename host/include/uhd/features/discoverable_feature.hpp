//
// Copyright 2020 Ettus Research, a National Instruments Brand
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#pragma once

#include <stddef.h>
#include <memory>
#include <string>

namespace uhd { namespace features {

/*!
 * The base class for discoverable features
 *
 * All discoverable features inherit from this class, which provides some basic
 * functionality for features.
 *
 * Also note that all discoverable features must implement a static method
 * get_feature_id() which returns a feature_id_t.
 */
class discoverable_feature
{
public:
    using sptr = std::shared_ptr<discoverable_feature>;

    //! An enum of all features supported by the driver. When creating a new
    // feature, you should add an entry to this enum.
    enum feature_id_t {
        RESERVED0,
        RESERVED1,
    };

    virtual ~discoverable_feature() = default;

    //! Returns a human-readable string name of this feature.
    virtual std::string get_feature_name() const = 0;
};

}} // namespace uhd::features
