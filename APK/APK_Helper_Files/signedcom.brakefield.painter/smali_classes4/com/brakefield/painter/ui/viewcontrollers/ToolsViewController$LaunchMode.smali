.class public final enum Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;
.super Ljava/lang/Enum;
.source "ToolsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

.field public static final enum CREATIVE_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

.field public static final enum EDITING_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;
    .locals 2

    .line 31
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->CREATIVE_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    sget-object v1, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->EDITING_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    filled-new-array {v0, v1}, [Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    const-string v1, "CREATIVE_TOOLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->CREATIVE_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    const-string v1, "EDITING_TOOLS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->EDITING_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->$values()[Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    move-result-object v0

    sput-object v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->$VALUES:[Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;
    .locals 1

    .line 31
    const-class v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;
    .locals 1

    .line 31
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->$VALUES:[Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    invoke-virtual {v0}, [Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    return-object v0
.end method
