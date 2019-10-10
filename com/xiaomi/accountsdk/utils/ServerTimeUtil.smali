.class public Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;,
        Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

.field private static final b:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;
    .registers 1

    .line 26
    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    return-object v0
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;)V
    .registers 1

    .line 30
    sput-object p0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$IServerTimeComputer;

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;)V
    .registers 2

    if-eqz p0, :cond_8

    .line 37
    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void

    .line 35
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()V
    .registers 2

    .line 45
    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;

    .line 46
    invoke-interface {v1}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static b(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;)V
    .registers 2

    .line 41
    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
