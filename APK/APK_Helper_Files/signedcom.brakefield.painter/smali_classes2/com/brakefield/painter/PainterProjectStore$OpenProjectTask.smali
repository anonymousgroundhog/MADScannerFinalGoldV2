.class public Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;
.super Landroid/os/AsyncTask;
.source "PainterProjectStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/PainterProjectStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenProjectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final project:Lcom/brakefield/painter/PainterProjectStore$Project;

.field private final then:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/Runnable;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->project:Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 124
    iput-object p2, p0, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->then:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->project:Lcom/brakefield/painter/PainterProjectStore$Project;

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->open()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->then:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
