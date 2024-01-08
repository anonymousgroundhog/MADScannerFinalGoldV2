.class public Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;
.super Landroid/app/Activity;
.source "ColorPickerSetup.java"


# instance fields
.field binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private bindView(Landroid/view/ViewGroup;)V
    .locals 3

    const/16 v0, 0x7d

    const/16 v1, 0x4c

    const/16 v2, 0x79

    .line 139
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/color/ColorPickerView;

    .line 141
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private update()V
    .locals 14

    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage1:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage2:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage3:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage4:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage5:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage6:Landroid/widget/ImageView;

    new-instance v2, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker1:Landroid/widget/FrameLayout;

    .line 81
    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker2:Landroid/widget/FrameLayout;

    .line 82
    iget-object v2, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker3:Landroid/widget/FrameLayout;

    .line 83
    iget-object v3, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker4:Landroid/widget/FrameLayout;

    .line 84
    iget-object v4, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker5:Landroid/widget/FrameLayout;

    .line 85
    iget-object v5, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v5, v5, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPicker6:Landroid/widget/FrameLayout;

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v6, :cond_0

    .line 88
    invoke-static {p0, v12}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    invoke-static {p0, v11}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    invoke-static {p0, v10}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    invoke-static {p0, v9}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    invoke-static {p0, v8}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    invoke-static {p0, v7}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;I)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_0
    iget-object v6, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage1:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v6, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage2:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v6, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage3:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v6, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage4:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v6, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage5:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v6, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v6, v6, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage6:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v6, 0x8

    .line 102
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 103
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 106
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 107
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    sget v13, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    if-nez v13, :cond_1

    .line 112
    iget-object v1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage1:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->bindView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    if-ne v13, v11, :cond_2

    .line 116
    iget-object v0, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 118
    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->bindView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    if-ne v13, v10, :cond_3

    .line 120
    iget-object v0, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 122
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->bindView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    if-ne v13, v9, :cond_4

    .line 124
    iget-object v0, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage4:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 126
    invoke-direct {p0, v3}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->bindView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_4
    if-ne v13, v8, :cond_5

    .line 128
    iget-object v0, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage5:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 130
    invoke-direct {p0, v4}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->bindView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_5
    if-ne v13, v7, :cond_6

    .line 132
    iget-object v0, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->colorPickerImage6:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    invoke-direct {p0, v5}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->bindView(Landroid/view/ViewGroup;)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$1$com-brakefield-infinitestudio-settings-ColorPickerSetup(Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->finish()V

    return-void
.end method

.method synthetic lambda$update$2$com-brakefield-infinitestudio-settings-ColorPickerSetup(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_COLOR_PICKER_TYPE"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    sput v0, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    .line 47
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->update()V

    return-void
.end method

.method synthetic lambda$update$3$com-brakefield-infinitestudio-settings-ColorPickerSetup(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_COLOR_PICKER_TYPE"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    sput v0, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    .line 53
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->update()V

    return-void
.end method

.method synthetic lambda$update$4$com-brakefield-infinitestudio-settings-ColorPickerSetup(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_COLOR_PICKER_TYPE"

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    sput v0, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    .line 59
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->update()V

    return-void
.end method

.method synthetic lambda$update$5$com-brakefield-infinitestudio-settings-ColorPickerSetup(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_COLOR_PICKER_TYPE"

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    sput v0, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    .line 65
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->update()V

    return-void
.end method

.method synthetic lambda$update$6$com-brakefield-infinitestudio-settings-ColorPickerSetup(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_COLOR_PICKER_TYPE"

    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    sput v0, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    .line 71
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->update()V

    return-void
.end method

.method synthetic lambda$update$7$com-brakefield-infinitestudio-settings-ColorPickerSetup(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PREF_COLOR_PICKER_TYPE"

    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    sput v0, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->type:I

    .line 77
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->update()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 27
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    .line 28
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->setContentView(Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->panel:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    iget-object p1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->container:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->grid:Landroid/widget/GridLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    goto :goto_1

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->binding:Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ColorPickersBinding;->grid:Landroid/widget/GridLayout;

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 37
    :goto_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/settings/ColorPickerSetup;->update()V

    return-void
.end method
