.class abstract Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;
.super Ljava/lang/Object;
.source "HomeMainViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CreateProjectOption"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V

    return-void
.end method


# virtual methods
.method abstract getIcon()I
.end method

.method abstract getTitle()Ljava/lang/String;
.end method

.method abstract getUIBindingKey()I
.end method

.method abstract onClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
.end method
