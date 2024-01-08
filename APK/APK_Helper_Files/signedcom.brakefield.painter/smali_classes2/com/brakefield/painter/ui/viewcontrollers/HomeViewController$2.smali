.class Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$2;
.super Ljava/lang/Object;
.source "HomeViewController.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ZI)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 133
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)I

    move-result v0

    .line 134
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 139
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    .line 140
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
