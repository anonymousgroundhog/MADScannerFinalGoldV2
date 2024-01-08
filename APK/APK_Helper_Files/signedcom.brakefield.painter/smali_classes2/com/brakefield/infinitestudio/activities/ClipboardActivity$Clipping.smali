.class public Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;
.super Ljava/lang/Object;
.source "ClipboardActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ClipboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clipping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;",
        ">;"
    }
.end annotation


# instance fields
.field id:I

.field location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->id:I

    .line 134
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->location:Ljava/lang/String;

    const-string v0, "_"

    const/4 v1, 0x2

    .line 135
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 136
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)I
    .locals 1

    .line 153
    iget p1, p1, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->id:I

    iget v0, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->id:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 128
    check-cast p1, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->compareTo(Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)I

    move-result p1

    return p1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .line 148
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getClipboardPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->location:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
