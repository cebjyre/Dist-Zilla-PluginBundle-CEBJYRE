use strict;
use warnings;
package Dist::Zilla::PluginBundle::CEBJYRE;

# ABSTRACT: My default dzil plugins

use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

=head1 DESCRIPTION

Using this bundle is equivalent to:

  [PkgVersion]
  [AutoPrereqs]
  [PodWeaver]
  [PodCoverageTests]
  [PodSyntaxTests]
  [NextRelease]
  [CheckPrereqsIndexed]
  [@Basic]
  [@Git]

=method configure

See L<Dist::Zilla::Role::PluginBundle::Easy>.

=cut

sub configure {
  my $self = shift;

  $self->add_plugins(qw(
    PkgVersion
    AutoPrereqs
    PodWeaver
    PodCoverageTests
    PodSyntaxTests
    NextRelease
    CheckPrereqsIndexed
  ));

  $self->add_bundle(
    'Basic',
    'Git',
  );
}

__PACKAGE__->meta->make_immutable;
no Moose;

1;
