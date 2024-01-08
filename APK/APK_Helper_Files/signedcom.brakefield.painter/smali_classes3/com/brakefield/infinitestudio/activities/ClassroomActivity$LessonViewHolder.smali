.class Lcom/brakefield/infinitestudio/activities/ClassroomActivity$LessonViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ClassroomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ClassroomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LessonViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 67
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$LessonViewHolder;->setItemClickListener()V

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$LessonViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;->refreshView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$LessonViewHolder;->update(Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;)V

    return-void
.end method
