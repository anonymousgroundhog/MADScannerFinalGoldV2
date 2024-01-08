.class public Lcom/brakefield/infinitestudio/MenuOption;
.super Ljava/lang/Object;
.source "MenuOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;
    }
.end annotation


# instance fields
.field public hasIcon:Z

.field public hasImage:Z

.field public imageId:I

.field private listener:Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;

.field public name:Ljava/lang/String;

.field public resId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->name:Ljava/lang/String;

    .line 13
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->indent:I

    iput v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->resId:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->imageId:I

    .line 15
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->hasIcon:Z

    .line 16
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->hasImage:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->name:Ljava/lang/String;

    .line 13
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->indent:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->imageId:I

    .line 16
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->hasImage:Z

    .line 25
    iput-object p1, p0, Lcom/brakefield/infinitestudio/MenuOption;->name:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/brakefield/infinitestudio/MenuOption;->resId:I

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/MenuOption;->hasIcon:Z

    .line 28
    iput-object p3, p0, Lcom/brakefield/infinitestudio/MenuOption;->listener:Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->name:Ljava/lang/String;

    .line 13
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->indent:I

    iput v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->resId:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->imageId:I

    .line 15
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->hasIcon:Z

    .line 16
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->hasImage:Z

    .line 21
    iput-object p1, p0, Lcom/brakefield/infinitestudio/MenuOption;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/brakefield/infinitestudio/MenuOption;->listener:Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MenuOption;->listener:Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;

    invoke-interface {v0}, Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;->onSelected()V

    return-void
.end method
