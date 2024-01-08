.class public abstract Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;
.super Ljava/lang/Object;
.source "ClassroomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ClassroomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Lesson"
.end annotation


# instance fields
.field protected description:Ljava/lang/String;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

.field protected thumb:I

.field protected title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;->this$0:Lcom/brakefield/infinitestudio/activities/ClassroomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract open()V
.end method

.method public refreshView(Landroid/view/View;)V
    .locals 2

    .line 102
    sget v0, Lcom/brakefield/infinitestudio/R$id;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 105
    sget v0, Lcom/brakefield/infinitestudio/R$id;->preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget v1, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;->thumb:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 110
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    return-void
.end method
