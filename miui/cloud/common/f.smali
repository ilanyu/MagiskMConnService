.class public Lmiui/cloud/common/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.xiaomi.X_SIM_INSERTED"

.field public static final b:Ljava/lang/String; = "com.xiaomi.X_SIM_REMOVED"

.field public static final c:Ljava/lang/String; = "com.xiaomi.X_SIM_NEW_CLOUDID"

.field public static final d:Ljava/lang/String; = "com.xiaomi.X_SIM_CLOUDID_CHANGED"

.field public static final e:Ljava/lang/String; = "com.xiaomi.X_SIM_SIMID_READY"

.field public static final f:Ljava/lang/String; = "slot_id"

.field public static final g:Ljava/lang/String; = "sim_id"

.field public static final h:Ljava/lang/String; = "cloud_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/content/Intent;
    .registers 3

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 26
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_INSERTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "sim_id"

    .line 20
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_NEW_CLOUDID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 32
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "cloud_id"

    .line 33
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static c(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_CLOUDID_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "cloud_id"

    .line 40
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static d(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.X_SIM_SIMID_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot_id"

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "sim_id"

    .line 47
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
