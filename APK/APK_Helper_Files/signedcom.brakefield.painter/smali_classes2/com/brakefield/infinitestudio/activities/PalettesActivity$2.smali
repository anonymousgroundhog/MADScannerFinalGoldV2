.class Lcom/brakefield/infinitestudio/activities/PalettesActivity$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity;->bindMainContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity;

.field final synthetic val$fragments:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity;Ljava/util/List;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$2;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$2;->val$fragments:Ljava/util/List;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 135
    sput p1, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->selectedPage:I

    .line 136
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$2;->val$fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->refresh()V

    return-void
.end method
