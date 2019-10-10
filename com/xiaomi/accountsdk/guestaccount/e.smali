.class public Lcom/xiaomi/accountsdk/guestaccount/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/guestaccount/f;


# static fields
.field private static final a:Ljava/lang/String; = "HardwareInfoFetcherDefa"


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 21
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    return-void

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/utils/l;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 31
    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    if-eqz v0, :cond_5c

    .line 49
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 52
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5b

    .line 56
    :cond_55
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_5b
    :goto_5b
    return-object v0

    .line 47
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
