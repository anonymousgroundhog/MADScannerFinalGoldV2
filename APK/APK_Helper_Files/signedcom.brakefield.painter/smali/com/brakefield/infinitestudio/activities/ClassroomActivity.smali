.class public abstract Lcom/brakefield/infinitestudio/activities/ClassroomActivity;
.super Lcom/brakefield/infinitestudio/activities/CollectionActivity;
.source "ClassroomActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;,
        Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;,
        Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;,
        Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;,
        Lcom/brakefield/infinitestudio/activities/ClassroomActivity$ClassroomSection;,
        Lcom/brakefield/infinitestudio/activities/ClassroomActivity$LessonViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/activities/CollectionActivity<",
        "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract addClassroomSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
            ">;)V"
        }
    .end annotation
.end method

.method protected getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$1;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;)V

    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .line 37
    sget v0, Lcom/brakefield/infinitestudio/R$string;->classroom:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract launchHelpDialog()V
.end method
