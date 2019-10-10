.class public Lcom/xiaomi/accountsdk/utils/FidSigningUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerImplDefault;,
        Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerHolder;,
        Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;,
        Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;
    .registers 1

    .line 21
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerHolder;->a()Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)V
    .registers 2

    if-eqz p0, :cond_6

    .line 28
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerHolder;->a(Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;

    return-void

    .line 26
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "signer == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
