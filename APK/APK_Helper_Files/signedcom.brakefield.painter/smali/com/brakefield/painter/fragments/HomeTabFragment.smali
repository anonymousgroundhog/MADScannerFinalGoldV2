.class public abstract Lcom/brakefield/painter/fragments/HomeTabFragment;
.super Lcom/brakefield/infinitestudio/ui/TabFragment;
.source "HomeTabFragment.java"


# instance fields
.field protected intentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

.field protected sidePadding:I

.field protected topPadding:I

.field final ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/brakefield/painter/fragments/HomeTabFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public animateFromEditor()V
    .locals 0

    return-void
.end method

.method public abstract getIcon()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/fragments/HomeTabFragment;->getView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public setIntentLaunchers(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/brakefield/painter/fragments/HomeTabFragment;->intentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    return-void
.end method

.method public abstract updatePadding(II)V
.end method
