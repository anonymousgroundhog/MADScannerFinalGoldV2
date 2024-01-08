.class Lcom/infinite/app/ui/settings/SettingsAdapter$1;
.super Ljava/lang/Object;
.source "SettingsAdapter.java"

# interfaces
.implements Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infinite/app/ui/settings/SettingsAdapter;-><init>(Ljava/util/List;Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$settings:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$1;->val$settings:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSetting(I)Lcom/infinite/app/ui/settings/Setting;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$1;->val$settings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/infinite/app/ui/settings/Setting;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$1;->val$settings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
