.class Lcom/miui/vsimcore/provider/SettingProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/vsimcore/provider/SettingProvider;->a()Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/vsimcore/provider/SettingProvider;


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/provider/SettingProvider;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/miui/vsimcore/provider/SettingProvider$1;->a:Lcom/miui/vsimcore/provider/SettingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/miui/vsimcore/provider/SettingProvider$1;->a:Lcom/miui/vsimcore/provider/SettingProvider;

    invoke-virtual {v0}, Lcom/miui/vsimcore/provider/SettingProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    move-result-object v0

    const/16 v1, 0x9

    .line 179
    invoke-virtual {v0, v1}, Lmiui/app/ToggleManager;->performToggle(I)Z

    return-void
.end method
