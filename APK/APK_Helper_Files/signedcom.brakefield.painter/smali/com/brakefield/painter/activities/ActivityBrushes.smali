.class public Lcom/brakefield/painter/activities/ActivityBrushes;
.super Lcom/brakefield/infinitestudio/activities/MasterActivity;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;,
        Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;
    }
.end annotation


# static fields
.field private static final JSON:Ljava/lang/String; = ".json"

.field public static listener:Landroid/view/View$OnClickListener;

.field protected static selectedPage:I


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ActivityBrushesBinding;

.field private final quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

.field private final session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/QuickHelp;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    .line 79
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    return-void
.end method


# virtual methods
.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityBrushes;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/painter/databinding/ActivityBrushesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/painter/databinding/ActivityBrushesBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes;->binding:Lcom/brakefield/painter/databinding/ActivityBrushesBinding;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v1, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;

    invoke-direct {v1}, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes;->binding:Lcom/brakefield/painter/databinding/ActivityBrushesBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivityBrushesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/SimpleFragmentStateAdapter;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/ui/SimpleFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 95
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes;->binding:Lcom/brakefield/painter/databinding/ActivityBrushesBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivityBrushesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/ZoomOutPageTransformer;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/ui/ZoomOutPageTransformer;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 96
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes;->binding:Lcom/brakefield/painter/databinding/ActivityBrushesBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ActivityBrushesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/brakefield/painter/activities/ActivityBrushes$1;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/activities/ActivityBrushes$1;-><init>(Lcom/brakefield/painter/activities/ActivityBrushes;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 104
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes;->binding:Lcom/brakefield/painter/databinding/ActivityBrushesBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityBrushesBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    sget v1, Lcom/brakefield/painter/activities/ActivityBrushes;->selectedPage:I

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 106
    invoke-static {p0}, Lcom/brakefield/infinitestudio/utils/NetworkUtils;->checkNetworkOrNotifyUser(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showQuickHelp()Z

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->visualizeQuickHelpCoverage()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/brakefield/painter/ui/QuickHelp;->setup(Landroid/view/ViewGroup;Lcom/brakefield/painter/app/PainterApp;ZZ)V

    return-void
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12007a

    .line 83
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
