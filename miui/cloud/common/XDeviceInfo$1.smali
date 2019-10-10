.class final Lmiui/cloud/common/XDeviceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/XDeviceInfo;->a(Landroid/content/Context;Lmiui/cloud/common/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiui/cloud/common/c;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/cloud/common/c;Landroid/content/Context;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo$1;->a:Lmiui/cloud/common/c;

    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 90
    iget-object v0, p0, Lmiui/cloud/common/XDeviceInfo$1;->a:Lmiui/cloud/common/c;

    invoke-virtual {v0}, Lmiui/cloud/common/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lmiui/cloud/common/XDeviceInfo;->a(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;->a(Lmiui/cloud/common/XDeviceInfo;)V

    return-void
.end method
