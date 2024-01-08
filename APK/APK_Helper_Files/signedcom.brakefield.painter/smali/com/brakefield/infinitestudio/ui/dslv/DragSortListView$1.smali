.class Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 0

    .line 98
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)F

    move-result p2

    mul-float/2addr p2, p1

    return p2
.end method
