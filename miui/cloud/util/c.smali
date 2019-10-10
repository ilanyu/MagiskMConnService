.class public Lmiui/cloud/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    .line 16
    invoke-static {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->a(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    .line 20
    :cond_8
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->d()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    .line 24
    :cond_f
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x2

    return p0

    .line 26
    :cond_17
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->j()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method
