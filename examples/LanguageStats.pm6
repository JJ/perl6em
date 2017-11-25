use Language;
use GitHub-Stats;

class LanguageStats is Language is GitHub-Stats {
    has Int $.rank;
}

subset PopularOOLanguages of LanguageStats where .rank <= 10 and .type eq 'OO';
