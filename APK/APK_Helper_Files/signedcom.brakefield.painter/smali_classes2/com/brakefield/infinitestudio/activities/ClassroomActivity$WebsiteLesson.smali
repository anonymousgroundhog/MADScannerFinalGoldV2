.class public Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;
.super Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;
.source "ClassroomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ClassroomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WebsiteLesson"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;)V

    .line 134
    iput-object p5, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;->url:Ljava/lang/String;

    .line 135
    iput p4, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;->thumb:I

    .line 136
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;->title:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public open()V
    .locals 3

    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    const-class v2, Lcom/brakefield/infinitestudio/activities/ActivityWeb;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_WEBSITE_URL"

    .line 143
    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_SHOW_BACK_NAVIGATION"

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
