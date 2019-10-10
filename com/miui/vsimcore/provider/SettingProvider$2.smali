.class Lcom/miui/vsimcore/provider/SettingProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/vsimcore/provider/SettingProvider;->n(Landroid/os/Bundle;)Landroid/os/Bundle;
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

    .line 441
    iput-object p1, p0, Lcom/miui/vsimcore/provider/SettingProvider$2;->a:Lcom/miui/vsimcore/provider/SettingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const-string v0, "restart_after_crash"

    .line 444
    invoke-static {v0}, Lcom/miui/vsimcore/utils/c;->e(Ljava/lang/String;)V

    return-void
.end method
