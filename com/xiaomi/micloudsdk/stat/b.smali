.class public Lcom/xiaomi/micloudsdk/stat/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "sever_error_bad_request"

.field public static final b:Ljava/lang/String; = "sever_error_unauthorized"

.field public static final c:Ljava/lang/String; = "sever_error_forbidden"

.field public static final d:Ljava/lang/String; = "sever_error_not-acceptable"

.field public static final e:Ljava/lang/String; = "server_5xx_error"

.field public static final f:Ljava/lang/String; = "sync_unknown_error"

.field public static final g:Ljava/lang/String; = "sync_soft_error"

.field public static final h:Ljava/lang/String; = "sync_hard_error"

.field public static final i:Ljava/lang/String; = "auth_token_error"

.field public static final j:Ljava/lang/String; = "cta_error"

.field public static final k:Ljava/lang/String; = "activated_fail"

.field public static final l:Ljava/lang/String; = "permission_limit"

.field public static final m:Ljava/lang/String; = "secure_space_limit"

.field public static final n:Ljava/lang/String; = "gdpr_deny"

.field public static final o:Ljava/lang/String; = "pause_limit"

.field public static final p:Ljava/lang/String; = "switch_off"

.field public static final q:Ljava/lang/String; = "cloud_space_full"

.field public static final r:Ljava/lang/String; = "wlan_only_error"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    packed-switch p0, :pswitch_data_2a

    const-string p0, "sync_unknown_error"

    goto :goto_1d

    :pswitch_9
    const-string p0, "wlan_only_error"

    goto :goto_1d

    :pswitch_c
    const-string p0, "cloud_space_full"

    goto :goto_1d

    :pswitch_f
    const-string p0, "gdpr_deny"

    goto :goto_1d

    :pswitch_12
    const-string p0, "secure_space_limit"

    goto :goto_1d

    :pswitch_15
    const-string p0, "permission_limit"

    goto :goto_1d

    :pswitch_18
    const-string p0, "activated_fail"

    goto :goto_1d

    :pswitch_1b
    const-string p0, "cta_error"

    :goto_1d
    return-object p0

    :pswitch_data_1e
    .packed-switch 0x3e8
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x7d0
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Landroid/content/SyncResult;)Ljava/lang/String;
    .registers 1

    .line 112
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "sync_hard_error"

    goto :goto_b

    :cond_9
    const-string p0, "sync_soft_error"

    :goto_b
    return-object p0
.end method

.method public static a(Lcom/xiaomi/micloudsdk/c/d;)Ljava/lang/String;
    .registers 3

    .line 40
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->j:I

    const/16 v1, -0x2711

    if-eq v0, v1, :cond_33

    const/16 v1, 0x193

    if-eq v0, v1, :cond_30

    const/16 v1, 0x196

    if-eq v0, v1, :cond_2d

    packed-switch v0, :pswitch_data_3a

    .line 58
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/d;->k:I

    const v1, 0xcb23

    if-ne v0, v1, :cond_1b

    const-string p0, "gdpr_deny"

    goto :goto_39

    .line 64
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->d()Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "server_5xx_error"

    goto :goto_39

    :cond_24
    const-string p0, "sync_unknown_error"

    goto :goto_39

    :pswitch_27
    const-string p0, "sever_error_unauthorized"

    goto :goto_39

    :pswitch_2a
    const-string p0, "sever_error_bad_request"

    goto :goto_39

    :cond_2d
    const-string p0, "sever_error_not-acceptable"

    goto :goto_39

    :cond_30
    const-string p0, "sever_error_forbidden"

    goto :goto_39

    .line 55
    :cond_33
    iget p0, p0, Lcom/xiaomi/micloudsdk/c/d;->k:I

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/stat/b;->a(I)Ljava/lang/String;

    move-result-object p0

    :goto_39
    return-object p0

    :pswitch_data_3a
    .packed-switch 0x190
        :pswitch_2a
        :pswitch_27
    .end packed-switch
.end method

.method public static a(Lcom/xiaomi/micloudsdk/c/h;)Ljava/lang/String;
    .registers 1

    .line 106
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/h;->a()I

    move-result p0

    .line 107
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/stat/b;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
