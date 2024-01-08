.class public Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;
.super Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;
.source "ClassroomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ClassroomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DialogLesson"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;)V

    .line 118
    iput p4, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;->thumb:I

    .line 119
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;->title:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public open()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity;->launchHelpDialog()V

    return-void
.end method
