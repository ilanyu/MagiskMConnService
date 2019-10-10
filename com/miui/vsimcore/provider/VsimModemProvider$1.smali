.class Lcom/miui/vsimcore/provider/VsimModemProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/vsimcore/provider/VsimModemProvider;->a()Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/vsimcore/provider/VsimModemProvider;


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/provider/VsimModemProvider;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/miui/vsimcore/provider/VsimModemProvider$1;->a:Lcom/miui/vsimcore/provider/VsimModemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 91
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
