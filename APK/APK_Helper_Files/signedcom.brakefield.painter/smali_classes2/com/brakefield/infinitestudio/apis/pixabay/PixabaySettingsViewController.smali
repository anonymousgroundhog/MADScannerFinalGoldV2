.class public Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;
.super Ljava/lang/Object;
.source "PixabaySettingsViewController.java"


# static fields
.field private static final PREF_IMAGE_SEARCH_EDITORS_CHOICE:Ljava/lang/String; = "PREF_IMAGE_SEARCH_EDITORS_CHOICE"

.field private static final PREF_IMAGE_SEARCH_ORDER:Ljava/lang/String; = "PREF_IMAGE_SEARCH_ORDER"

.field private static final PREF_IMAGE_SEARCH_TYPE:Ljava/lang/String; = "PREF_IMAGE_SEARCH_TYPE"


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

.field private context:Landroid/content/Context;

.field private pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    return-object p0
.end method

.method static synthetic lambda$show$0(Landroid/view/View$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 38
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private setupFilterView()V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchTypeSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->context:Landroid/content/Context;

    sget v4, Lcom/brakefield/infinitestudio/R$array;->imageSearchTypeArray:I

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 47
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchTypeSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$1;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$1;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 58
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchTypeSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iget v2, v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->typePosition:I

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    .line 60
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchOrientationSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->context:Landroid/content/Context;

    sget v4, Lcom/brakefield/infinitestudio/R$array;->imageSearchOrientationArray:I

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 61
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchOrientationSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$2;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$2;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 69
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchOrientationSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iget v2, v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orientationPosition:I

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    .line 71
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchCategorySpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->context:Landroid/content/Context;

    sget v4, Lcom/brakefield/infinitestudio/R$array;->imageSearchCategoryArray:I

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchCategorySpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$3;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$3;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 80
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchCategorySpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iget v2, v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->categoryPosition:I

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    .line 82
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchOrderSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->context:Landroid/content/Context;

    sget v4, Lcom/brakefield/infinitestudio/R$array;->imageSearchOrderArray:I

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 83
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchOrderSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$4;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$4;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchOrderSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iget v2, v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orderPosition:I

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    .line 96
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchEditorsChoiceToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    new-instance v2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->imageSearchEditorsChoiceToggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iget-boolean v1, v1, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->editorsChoice:Z

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->safeSearchButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->safeSearch:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->shouldFilterContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->safeSearchButton:Landroid/widget/Button;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->disable_safe_search:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->safeSearchButton:Landroid/widget/Button;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->enable_safe_search:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$setupFilterView$1$com-brakefield-infinitestudio-apis-pixabay-PixabaySettingsViewController(Landroid/content/SharedPreferences;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 97
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iput-boolean p3, p2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->editorsChoice:Z

    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_IMAGE_SEARCH_EDITORS_CHOICE"

    .line 99
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$setupFilterView$2$com-brakefield-infinitestudio-apis-pixabay-PixabaySettingsViewController(Ljava/lang/Boolean;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->safeSearch:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->shouldFilterContent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->safeSearchButton:Landroid/widget/Button;

    sget v0, Lcom/brakefield/infinitestudio/R$string;->disable_safe_search:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->safeSearchButton:Landroid/widget/Button;

    sget v0, Lcom/brakefield/infinitestudio/R$string;->enable_safe_search:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setupFilterView$3$com-brakefield-infinitestudio-apis-pixabay-PixabaySettingsViewController(Landroid/view/View;)V
    .locals 2

    .line 105
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->safeSearch:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->context:Landroid/content/Context;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;)V

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->toggle(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public load(Landroid/content/SharedPreferences;Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;)V
    .locals 2

    const-string v0, "PREF_IMAGE_SEARCH_TYPE"

    const/4 v1, 0x0

    .line 115
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->setType(I)V

    const-string v0, "PREF_IMAGE_SEARCH_ORDER"

    .line 116
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->setOrder(I)V

    const-string v0, "PREF_IMAGE_SEARCH_EDITORS_CHOICE"

    .line 117
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->editorsChoice:Z

    .line 118
    iget-object p2, p2, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->safeSearch:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->load(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public show(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 29
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    .line 32
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    .line 35
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->setupFilterView()V

    .line 36
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->binding:Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/databinding/ImageSearchFilterBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 38
    sget p1, Lcom/brakefield/infinitestudio/R$string;->search:I

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 39
    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
