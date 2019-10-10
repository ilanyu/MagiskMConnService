.class public Lcom/xiaomi/accountsdk/guestaccount/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x64

    if-ge p0, v0, :cond_5c

    packed-switch p0, :pswitch_data_da

    const-string p1, "unknown_error"

    .line 37
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local parameter error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_24
    const-string p1, "IO_ERROR"

    .line 33
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2b
    const-string p1, "SERVER_UNKNOWN_ERROR"

    .line 31
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_32
    const-string p1, "LOCAL_CTA_ERROR"

    .line 29
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_39
    const-string p1, "LOCAL_INTERRUPTED"

    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_40
    const-string p1, "NO_PERMISSION_ERROR"

    .line 25
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_47
    const-string p1, "CANNOT_JUDGE_APP_PERMISSION_ERROR"

    .line 23
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4e
    const-string p1, "NO_ERROR"

    .line 21
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_55
    const-string p1, "UNKNOWN_ERROR"

    .line 19
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5c
    const/16 p1, 0x3e8

    if-ge p0, p1, :cond_67

    const-string p1, "http_error"

    .line 42
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_67
    const p1, 0x186a0

    if-ge p0, p1, :cond_73

    const-string p1, "unknown_error"

    .line 45
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_73
    const p1, 0x18a88

    if-ge p0, p1, :cond_7f

    const-string p1, "server_fatal_error"

    .line 48
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7f
    const p1, 0x18e70

    if-ge p0, p1, :cond_8b

    const-string p1, "server_argument_error"

    .line 51
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8b
    const p1, 0x19258

    if-ge p0, p1, :cond_97

    const-string p1, "server_database_error"

    .line 54
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_97
    const p1, 0x19640

    if-ge p0, p1, :cond_a3

    const-string p1, "server_error"

    .line 57
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a3
    const p1, 0x19a28

    if-ge p0, p1, :cond_af

    const-string p1, "server_coder_error"

    .line 60
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_af
    const p1, 0x19e10

    if-ge p0, p1, :cond_bb

    const-string p1, "server_domain_error"

    .line 63
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bb
    const p1, 0x1a1f8

    if-ge p0, p1, :cond_c7

    const-string p1, "server_token_error"

    .line 66
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c7
    const p1, 0x1a5e0

    if-ge p0, p1, :cond_d3

    const-string p1, "server_json_error"

    .line 69
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d3
    const-string p1, "unknown_error"

    .line 71
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/d;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_da
    .packed-switch -0x1
        :pswitch_55
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_24
        :pswitch_e
    .end packed-switch
.end method

.method private static b(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "code:%d(%s)"

    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
