.class public Lcom/xiaomi/micloudsdk/sync/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x64

.field private static final e:I = -0x1

.field private static final f:I = 0x3e8

.field private static final g:I = 0x3e9

.field private static final h:I = 0x3ea

.field private static final i:I = 0x3eb

.field private static final j:Ljava/lang/String; = "SyncUtils"

.field private static final k:Landroid/net/Uri;

.field private static final l:Ljava/lang/String; = "authority"

.field private static final m:Ljava/lang/String; = "code"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.miui.micloud/sync_result"

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/utils/a;->k:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    const/16 v0, 0x64

    return v0
.end method

.method public static a(Landroid/content/SyncResult;)I
    .registers 1

    .line 64
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static a(Lcom/xiaomi/micloudsdk/c/d;)I
    .registers 3

    .line 44
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v1, -0x2711

    if-eq v0, v1, :cond_9

    iget p0, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    goto :goto_b

    :cond_9
    iget p0, p0, Lcom/xiaomi/micloudsdk/c/d;->k:I

    :goto_b
    return p0
.end method

.method public static a(Lcom/xiaomi/micloudsdk/c/h;)I
    .registers 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/h;->a()I

    move-result p0

    packed-switch p0, :pswitch_data_16

    const/4 p0, -0x1

    return p0

    :pswitch_9
    const/16 p0, 0x3eb

    return p0

    :pswitch_c
    const/16 p0, 0x3ea

    return p0

    :pswitch_f
    const/16 p0, 0x3e9

    return p0

    :pswitch_12
    const/16 p0, 0x3e8

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x3e8
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "SyncUtils"

    const-string v1, "recordSyncResultSuccess"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/utils/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    .line 40
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static b()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method public static c()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method
