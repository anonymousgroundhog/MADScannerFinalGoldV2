.class public final enum Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;
.super Ljava/lang/Enum;
.source "CreateProjectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

.field public static final enum BLANK:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

.field public static final enum IMAGE:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

.field public static final enum PATTERN:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;
    .locals 3

    .line 99
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->BLANK:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    sget-object v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->IMAGE:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    sget-object v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->PATTERN:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    filled-new-array {v0, v1, v2}, [Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 101
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    const-string v1, "BLANK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->BLANK:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    .line 102
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->IMAGE:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    .line 103
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    const-string v1, "PATTERN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->PATTERN:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    .line 99
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->$values()[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    move-result-object v0

    sput-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->$VALUES:[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;
    .locals 1

    .line 99
    const-class v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;
    .locals 1

    .line 99
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->$VALUES:[Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    invoke-virtual {v0}, [Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->value:I

    return v0
.end method
