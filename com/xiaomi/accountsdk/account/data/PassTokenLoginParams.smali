.class public Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->a:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->b:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->c:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->d:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->e:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->f:Z

    .line 20
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->g(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$1;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)V

    return-void
.end method
