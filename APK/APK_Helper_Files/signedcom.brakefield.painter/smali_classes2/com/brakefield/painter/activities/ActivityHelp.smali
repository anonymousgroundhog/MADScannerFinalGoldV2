.class public Lcom/brakefield/painter/activities/ActivityHelp;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivityHelp$SizeHelpFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$BrushesHelpFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$ColorsHelpFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$EyedropperHelpFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$CornersHelpFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$ToolsHelpFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$OptionsHelpFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$EmptyFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$ToolbarHelpFragment;,
        Lcom/brakefield/painter/activities/ActivityHelp$HelpFragment;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x4

.field public static final PAINT:I

.field public static type:I


# instance fields
.field private final quickHelp:Lcom/brakefield/painter/ui/QuickHelp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/QuickHelp;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityHelp;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    return-void
.end method

.method static synthetic lambda$onCreate$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 36
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityHelp;->setContentView(I)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    sget v0, Lcom/brakefield/painter/activities/ActivityHelp;->type:I

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/brakefield/painter/activities/ActivityHelp$SizeHelpFragment;

    invoke-direct {v0}, Lcom/brakefield/painter/activities/ActivityHelp$SizeHelpFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/brakefield/painter/activities/ActivityHelp$BrushesHelpFragment;

    invoke-direct {v0}, Lcom/brakefield/painter/activities/ActivityHelp$BrushesHelpFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/brakefield/painter/activities/ActivityHelp$ColorsHelpFragment;

    invoke-direct {v0}, Lcom/brakefield/painter/activities/ActivityHelp$ColorsHelpFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/brakefield/painter/activities/ActivityHelp$EyedropperHelpFragment;

    invoke-direct {v0}, Lcom/brakefield/painter/activities/ActivityHelp$EyedropperHelpFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/brakefield/painter/activities/ActivityHelp$CornersHelpFragment;

    invoke-direct {v0}, Lcom/brakefield/painter/activities/ActivityHelp$CornersHelpFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/brakefield/painter/activities/ActivityHelp$ToolsHelpFragment;

    invoke-direct {v0}, Lcom/brakefield/painter/activities/ActivityHelp$ToolsHelpFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lcom/brakefield/painter/activities/ActivityHelp$OptionsHelpFragment;

    invoke-direct {v0}, Lcom/brakefield/painter/activities/ActivityHelp$OptionsHelpFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_0
    new-instance v0, Lcom/brakefield/painter/activities/ActivityHelp$EmptyFragment;

    invoke-direct {v0}, Lcom/brakefield/painter/activities/ActivityHelp$EmptyFragment;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a04be

    .line 60
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/activities/ActivityHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0694

    .line 62
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/activities/ActivityHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 63
    new-instance v2, Lcom/brakefield/infinitestudio/ui/SimpleFragmentStateAdapter;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/infinitestudio/ui/SimpleFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    new-instance v2, Lcom/brakefield/infinitestudio/ui/ZoomOutPageTransformer;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/ui/ZoomOutPageTransformer;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    const v2, 0x7f0a0408

    .line 67
    invoke-virtual {p0, v2}, Lcom/brakefield/painter/activities/ActivityHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    .line 68
    new-instance v3, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v4, Lcom/brakefield/painter/activities/ActivityHelp$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/brakefield/painter/activities/ActivityHelp$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 70
    new-instance v2, Lcom/brakefield/painter/activities/ActivityHelp$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/brakefield/painter/activities/ActivityHelp$1;-><init>(Lcom/brakefield/painter/activities/ActivityHelp;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const p1, 0x7f01001c

    .line 83
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
