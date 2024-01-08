.class public Lcom/brakefield/painter/brushes/BrushSettingsDialog;
.super Ljava/lang/Object;
.source "BrushSettingsDialog.java"


# static fields
.field private static fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/TabFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static prevBrushName:Ljava/lang/String;

.field private static prevBrushType:I

.field private static settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/brushes/settings/BrushSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static settingsPagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

.field private static updateListener:Landroid/view/View$OnClickListener;

.field private static view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->fragments:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->settings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$refresh$0(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic lambda$refresh$1(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic lambda$refresh$2(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x2

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic lambda$refresh$3(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x3

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic lambda$refresh$4(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x4

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public static refresh()V
    .locals 3

    .line 75
    sget-object v0, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    .line 77
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    .line 81
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v1

    .line 82
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v2

    .line 84
    sput v1, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->prevBrushType:I

    .line 85
    sput-object v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->prevBrushName:Ljava/lang/String;

    const v1, 0x7f0a0409

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 89
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-ltz v1, :cond_0

    .line 91
    sget-object v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->settingsPagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 95
    :cond_0
    new-instance v1, Lcom/brakefield/painter/brushes/BrushSettingsDialog$2;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/brushes/BrushSettingsDialog$2;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 104
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 105
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    sget-object v1, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v2, 0x7f0a05b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 112
    new-instance v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget-object v1, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v2, 0x7f0a0291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 116
    new-instance v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget-object v1, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v2, 0x7f0a0613

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 120
    new-instance v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda2;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget-object v1, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v2, 0x7f0a040c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 124
    new-instance v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda3;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget-object v1, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v2, 0x7f0a058a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 128
    new-instance v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/brakefield/painter/brushes/BrushSettingsDialog$$ExternalSyntheticLambda4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 130
    invoke-static {v0}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updateTab(I)V

    return-void
.end method

.method public static refreshIfNeeded()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v0

    .line 179
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v1

    .line 181
    sget v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->prevBrushType:I

    if-ne v2, v0, :cond_0

    sget-object v0, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->prevBrushName:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 182
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->refresh()V

    :cond_1
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->prevBrushName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 46
    sput v0, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->prevBrushType:I

    .line 48
    sput-object p3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updateListener:Landroid/view/View$OnClickListener;

    .line 50
    sget-object p3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->fragments:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 51
    sget-object p3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->fragments:Ljava/util/List;

    new-instance v0, Lcom/brakefield/painter/fragments/BrushStrokeSettingsFragment;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/fragments/BrushStrokeSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object p3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->fragments:Ljava/util/List;

    new-instance v0, Lcom/brakefield/painter/fragments/BrushHeadSettingsFragment;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/fragments/BrushHeadSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object p3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->fragments:Ljava/util/List;

    new-instance v0, Lcom/brakefield/painter/fragments/BrushTextureSettingsFragment;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/fragments/BrushTextureSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object p3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->fragments:Ljava/util/List;

    new-instance v0, Lcom/brakefield/painter/fragments/BrushPaintSettingsFragment;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/fragments/BrushPaintSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object p3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->fragments:Ljava/util/List;

    new-instance v0, Lcom/brakefield/painter/fragments/BrushSpecialSettingsFragment;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/fragments/BrushSpecialSettingsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance p1, Lcom/brakefield/painter/brushes/BrushSettingsDialog$1;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    sget-object p3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->fragments:Ljava/util/List;

    invoke-direct {p1, p0, p3}, Lcom/brakefield/painter/brushes/BrushSettingsDialog$1;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    sput-object p1, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->settingsPagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    .line 68
    sput-object p2, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    .line 70
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->refresh()V

    return-void
.end method

.method public static updatePreview()V
    .locals 2

    .line 186
    sget-object v0, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updateListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static updateTab(I)V
    .locals 6

    .line 135
    sget-object v0, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v1, 0x7f0a05b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    sget-object v1, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v2, 0x7f0a0293

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 137
    sget-object v2, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v3, 0x7f0a0615

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 138
    sget-object v3, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v4, 0x7f0a040e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 139
    sget-object v4, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->view:Landroid/view/View;

    const v5, 0x7f0a058c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 141
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 142
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 143
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 144
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 145
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 v5, 0x0

    .line 147
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 172
    new-instance p0, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 168
    new-instance p0, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 164
    new-instance p0, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 160
    new-instance p0, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 156
    new-instance p0, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
