.class public Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;
.super Ljava/lang/Object;
.source "DriveFile.java"


# instance fields
.field private createdTime:Lcom/google/api/client/util/DateTime;

.field private id:Ljava/lang/String;

.field private modifiedTime:Lcom/google/api/client/util/DateTime;

.field private name:Ljava/lang/String;

.field private size:J

.field private starred:Ljava/lang/Boolean;

.field private thumbnailLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->createdTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->modifiedTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->size:J

    return-wide v0
.end method

.method public getStarred()Ljava/lang/Boolean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->starred:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getThumbnailLink()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->thumbnailLink:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedTime(Lcom/google/api/client/util/DateTime;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->createdTime:Lcom/google/api/client/util/DateTime;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->id:Ljava/lang/String;

    return-void
.end method

.method public setModifiedTime(Lcom/google/api/client/util/DateTime;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->modifiedTime:Lcom/google/api/client/util/DateTime;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->name:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->size:J

    return-void
.end method

.method public setStarred(Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->starred:Ljava/lang/Boolean;

    return-void
.end method

.method public setThumbnailLink(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->thumbnailLink:Ljava/lang/String;

    return-void
.end method
