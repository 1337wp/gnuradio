/* -*- c++ -*- */
/*
 * Copyright 2003,2004 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

/*
 * WARNING: This file is automatically generated by
 * generate_gr_fir_sysconfig_generic.py.
 *
 * Any changes made to this file will be overwritten.
 */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif
#include <gr_fir_sysconfig_generic.h>

#include <gr_fir_ccf_generic.h>
#include <gr_fir_fcc_generic.h>
#include <gr_fir_ccc_generic.h>
#include <gr_fir_fff_generic.h>
#include <gr_fir_scc_generic.h>
#include <gr_fir_fsf_generic.h>

/*
 * ----------------------------------------------------------------
 * static functions that serve as constructors returned by info
 * ----------------------------------------------------------------
 */

static gr_fir_ccf *
make_gr_fir_ccf (const std::vector<float> &taps)
{
  return new gr_fir_ccf_generic (taps);
}

static gr_fir_fcc *
make_gr_fir_fcc (const std::vector<gr_complex> &taps)
{
  return new gr_fir_fcc_generic (taps);
}

static gr_fir_ccc *
make_gr_fir_ccc (const std::vector<gr_complex> &taps)
{
  return new gr_fir_ccc_generic (taps);
}

static gr_fir_fff *
make_gr_fir_fff (const std::vector<float> &taps)
{
  return new gr_fir_fff_generic (taps);
}

static gr_fir_scc *
make_gr_fir_scc (const std::vector<gr_complex> &taps)
{
  return new gr_fir_scc_generic (taps);
}

static gr_fir_fsf *
make_gr_fir_fsf (const std::vector<float> &taps)
{
  return new gr_fir_fsf_generic (taps);
}

/*
 * ----------------------------------------------------------------
 * return instances of the generic C++ versions of these classes.
 * ----------------------------------------------------------------
 */

gr_fir_ccf *
gr_fir_sysconfig_generic::create_gr_fir_ccf (const std::vector<float> &taps)
{
  return make_gr_fir_ccf (taps);
}

gr_fir_fcc *
gr_fir_sysconfig_generic::create_gr_fir_fcc (const std::vector<gr_complex> &taps)
{
  return make_gr_fir_fcc (taps);
}

gr_fir_ccc *
gr_fir_sysconfig_generic::create_gr_fir_ccc (const std::vector<gr_complex> &taps)
{
  return make_gr_fir_ccc (taps);
}

gr_fir_fff *
gr_fir_sysconfig_generic::create_gr_fir_fff (const std::vector<float> &taps)
{
  return make_gr_fir_fff (taps);
}

gr_fir_scc *
gr_fir_sysconfig_generic::create_gr_fir_scc (const std::vector<gr_complex> &taps)
{
  return make_gr_fir_scc (taps);
}

gr_fir_fsf *
gr_fir_sysconfig_generic::create_gr_fir_fsf (const std::vector<float> &taps)
{
  return make_gr_fir_fsf (taps);
}

/*
 * Return info about available implementations.
 *
 * This is the bottom of the concrete hierarchy, so we set the
 * size of the vector to 1, and install our info.  Classes derived
 * from us invoke us first, then append their own info.
 */

void
gr_fir_sysconfig_generic::get_gr_fir_ccf_info (std::vector<gr_fir_ccf_info> *info)
{
  info->resize (1);
  (*info)[0].name = "generic";
  (*info)[0].create = make_gr_fir_ccf;
}

void
gr_fir_sysconfig_generic::get_gr_fir_fcc_info (std::vector<gr_fir_fcc_info> *info)
{
  info->resize (1);
  (*info)[0].name = "generic";
  (*info)[0].create = make_gr_fir_fcc;
}

void
gr_fir_sysconfig_generic::get_gr_fir_ccc_info (std::vector<gr_fir_ccc_info> *info)
{
  info->resize (1);
  (*info)[0].name = "generic";
  (*info)[0].create = make_gr_fir_ccc;
}

void
gr_fir_sysconfig_generic::get_gr_fir_fff_info (std::vector<gr_fir_fff_info> *info)
{
  info->resize (1);
  (*info)[0].name = "generic";
  (*info)[0].create = make_gr_fir_fff;
}

void
gr_fir_sysconfig_generic::get_gr_fir_scc_info (std::vector<gr_fir_scc_info> *info)
{
  info->resize (1);
  (*info)[0].name = "generic";
  (*info)[0].create = make_gr_fir_scc;
}

void
gr_fir_sysconfig_generic::get_gr_fir_fsf_info (std::vector<gr_fir_fsf_info> *info)
{
  info->resize (1);
  (*info)[0].name = "generic";
  (*info)[0].create = make_gr_fir_fsf;
}
