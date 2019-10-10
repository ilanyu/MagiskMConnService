.class public Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->a:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->b:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->c:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->d:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->e:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;->f:Ljava/lang/String;

    return-void
.end method
