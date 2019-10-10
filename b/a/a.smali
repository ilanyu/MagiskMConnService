.class public Lb/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .line 18
    new-instance v6, Lmiui/cloud/common/SwitchFileLogSender;

    const/4 v7, 0x0

    move-object v2, v7

    check-cast v2, Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiui/cloud/common/SwitchFileLogSender;-><init>(Landroid/content/Context;Lmiui/cloud/common/SwitchFileLogSender$PathProvider;IILmiui/cloud/common/XLogger$LogSender;)V

    const/4 v0, -0x1

    .line 19
    invoke-virtual {v6, v0, v7, v7}, Lmiui/cloud/common/SwitchFileLogSender;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-static {p1}, Lmiui/cloud/stat/MiCloudStatUtil;->startMiCloudMainActivity(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {p1, p2}, La/a/b/a/a/a;->a(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
