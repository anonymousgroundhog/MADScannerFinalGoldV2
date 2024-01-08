.class Lcom/brakefield/painter/activities/ActivityBrushes$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivityBrushes;->bindMainContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityBrushes;

.field final synthetic val$fragments:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityBrushes;Ljava/util/List;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$1;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$1;->val$fragments:Ljava/util/List;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 100
    sput p1, Lcom/brakefield/painter/activities/ActivityBrushes;->selectedPage:I

    .line 101
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$1;->val$fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->refresh()V

    return-void
.end method
