.class public Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;
.super Ljava/lang/Object;
.source "SafeSearch.java"


# static fields
.field private static final PREF_IMAGE_SEARCH_OVER_18:Ljava/lang/String; = "PREF_IMAGE_SEARCH_OVER_18"

.field private static final PREF_IMAGE_SEARCH_SAFE_SEARCH:Ljava/lang/String; = "PREF_IMAGE_SEARCH_SAFE_SEARCH"


# instance fields
.field private filterContent:Z

.field private over18:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->over18:Z

    .line 20
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->filterContent:Z

    return-void
.end method

.method private save(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_IMAGE_SEARCH_OVER_18"

    .line 42
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->over18:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "PREF_IMAGE_SEARCH_SAFE_SEARCH"

    .line 43
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->filterContent:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method synthetic lambda$toggle$0$com-brakefield-infinitestudio-apis-pixabay-SafeSearch(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/components/OnChange;Ljava/lang/Boolean;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->filterContent:Z

    .line 30
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->save(Landroid/content/Context;)V

    .line 31
    invoke-interface {p2, p3}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$verifyAge$1$com-brakefield-infinitestudio-apis-pixabay-SafeSearch(Ljava/util/Calendar;Lcom/brakefield/infinitestudio/ui/components/OnChange;Landroid/widget/DatePicker;III)V
    .locals 2

    .line 65
    invoke-virtual {p1, p4, p5, p6}, Ljava/util/Calendar;->set(III)V

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/4 p4, 0x1

    .line 69
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p5

    invoke-virtual {p1, p4}, Ljava/util/Calendar;->get(I)I

    move-result p6

    sub-int/2addr p5, p6

    const/4 p6, 0x2

    .line 70
    invoke-virtual {p1, p6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p3, p6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1, p6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p3, p6}, Ljava/util/Calendar;->get(I)I

    move-result p6

    if-ne v0, p6, :cond_1

    const/4 p6, 0x5

    invoke-virtual {p1, p6}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p3, p6}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-le p1, p3, :cond_1

    :cond_0
    add-int/lit8 p5, p5, -0x1

    :cond_1
    const/16 p1, 0x12

    if-lt p5, p1, :cond_2

    .line 73
    iput-boolean p4, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->over18:Z

    .line 74
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public load(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "PREF_IMAGE_SEARCH_OVER_18"

    const/4 v1, 0x0

    .line 48
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->over18:Z

    const-string v0, "PREF_IMAGE_SEARCH_SAFE_SEARCH"

    const/4 v1, 0x1

    .line 49
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->filterContent:Z

    return-void
.end method

.method public shouldFilterContent()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->over18:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->filterContent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toggle(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->filterContent:Z

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->verifyAge(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->filterContent:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->save(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public verifyAge(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->over18:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/brakefield/infinitestudio/ui/components/OnChange;->change(Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x2

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v1, 0x5

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 64
    new-instance v1, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, p2}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;Ljava/util/Calendar;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 77
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 78
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
