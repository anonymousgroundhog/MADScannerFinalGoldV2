.class Lcom/brakefield/painter/activities/ActivityMain$DropListener;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityMain;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/activities/ActivityMain;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$DropListener;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityMain;Lcom/brakefield/painter/activities/ActivityMain$1;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lcom/brakefield/painter/activities/ActivityMain$DropListener;-><init>(Lcom/brakefield/painter/activities/ActivityMain;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    .line 813
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "application/x-arc-uri-list"

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v2

    .line 825
    :pswitch_1
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$DropListener;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/activities/ActivityMain;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 827
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 828
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 831
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 832
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 834
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$DropListener;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p1, p2}, Lcom/brakefield/painter/activities/ActivityMain;->access$1000(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/Intent;)Z

    :cond_0
    :pswitch_2
    return v2

    .line 816
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
