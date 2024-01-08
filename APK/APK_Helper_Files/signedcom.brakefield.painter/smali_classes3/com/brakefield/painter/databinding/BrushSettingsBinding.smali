.class public final Lcom/brakefield/painter/databinding/BrushSettingsBinding;
.super Ljava/lang/Object;
.source "BrushSettingsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brushSettings:Landroid/widget/LinearLayout;

.field public final brushSettingsPager:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

.field public final brushSettingsRowItems:Landroid/widget/FrameLayout;

.field public final headButton:Landroid/widget/FrameLayout;

.field public final headImage:Landroid/widget/ImageView;

.field public final pager:Landroidx/viewpager2/widget/ViewPager2;

.field public final paintButton:Landroid/widget/FrameLayout;

.field public final paintImage:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final settingsPagerHintLeft:Landroid/widget/ImageView;

.field public final settingsPagerHintRight:Landroid/widget/ImageView;

.field public final specialButton:Landroid/widget/FrameLayout;

.field public final specialImage:Landroid/widget/ImageView;

.field public final strokeButton:Landroid/widget/FrameLayout;

.field public final strokeImage:Landroid/widget/ImageView;

.field public final textureButton:Landroid/widget/FrameLayout;

.field public final textureImage:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/HorizontalPager;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 2

    move-object v0, p0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 81
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 82
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->brushSettings:Landroid/widget/LinearLayout;

    move-object v1, p3

    .line 83
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->brushSettingsPager:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    move-object v1, p4

    .line 84
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->brushSettingsRowItems:Landroid/widget/FrameLayout;

    move-object v1, p5

    .line 85
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->headButton:Landroid/widget/FrameLayout;

    move-object v1, p6

    .line 86
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->headImage:Landroid/widget/ImageView;

    move-object v1, p7

    .line 87
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    move-object v1, p8

    .line 88
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->paintButton:Landroid/widget/FrameLayout;

    move-object v1, p9

    .line 89
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->paintImage:Landroid/widget/ImageView;

    move-object v1, p10

    .line 90
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->settingsPagerHintLeft:Landroid/widget/ImageView;

    move-object v1, p11

    .line 91
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->settingsPagerHintRight:Landroid/widget/ImageView;

    move-object v1, p12

    .line 92
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->specialButton:Landroid/widget/FrameLayout;

    move-object v1, p13

    .line 93
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->specialImage:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 94
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->strokeButton:Landroid/widget/FrameLayout;

    move-object/from16 v1, p15

    .line 95
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->strokeImage:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 96
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->textureButton:Landroid/widget/FrameLayout;

    move-object/from16 v1, p17

    .line 97
    iput-object v1, v0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->textureImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 127
    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const v1, 0x7f0a00de

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    if-eqz v3, :cond_0

    const v1, 0x7f0a00df

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    const v1, 0x7f0a0291

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0293

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0409

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v7, :cond_0

    const v1, 0x7f0a040c

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a040e

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a054f

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0550

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a058a

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a058c

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a05b3

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a05b6

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0613

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0615

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    .line 219
    new-instance v18, Lcom/brakefield/painter/databinding/BrushSettingsBinding;

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-direct/range {v0 .. v17}, Lcom/brakefield/painter/databinding/BrushSettingsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/HorizontalPager;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    return-object v18

    .line 224
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsBinding;
    .locals 2

    const v0, 0x7f0d0038

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
