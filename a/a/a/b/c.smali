.class public La/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/b/d;


# instance fields
.field private final a:Lmiui/cloud/finddevice/FindDeviceStatusManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->obtain(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceStatusManager;

    move-result-object p1

    iput-object p1, p0, La/a/a/b/c;->a:Lmiui/cloud/finddevice/FindDeviceStatusManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)La/a/a/b/c;
    .registers 2

    .line 16
    new-instance v0, La/a/a/b/c;

    invoke-direct {v0, p0}, La/a/a/b/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 26
    iget-object v0, p0, La/a/a/b/c;->a:Lmiui/cloud/finddevice/FindDeviceStatusManager;

    invoke-virtual {v0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 21
    iget-object v0, p0, La/a/a/b/c;->a:Lmiui/cloud/finddevice/FindDeviceStatusManager;

    invoke-virtual {v0, p1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->asyncOpen(Z)V

    return-void
.end method
