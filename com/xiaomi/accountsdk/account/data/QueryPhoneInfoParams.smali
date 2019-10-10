.class public Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->a:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->b:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->c:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->e:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->d:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->f:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$1;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;-><init>(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)V

    return-void
.end method
