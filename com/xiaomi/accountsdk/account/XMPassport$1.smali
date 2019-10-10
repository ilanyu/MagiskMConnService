.class synthetic Lcom/xiaomi/accountsdk/account/XMPassport$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/XMPassport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 2339
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/b;->values()[Lcom/xiaomi/accountsdk/account/data/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassport$1;->b:[I

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/b;->a:Lcom/xiaomi/accountsdk/account/data/b;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/b;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/xiaomi/accountsdk/account/XMPassport$1;->b:[I

    sget-object v3, Lcom/xiaomi/accountsdk/account/data/b;->b:Lcom/xiaomi/accountsdk/account/data/b;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/b;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/xiaomi/accountsdk/account/XMPassport$1;->b:[I

    sget-object v4, Lcom/xiaomi/accountsdk/account/data/b;->c:Lcom/xiaomi/accountsdk/account/data/b;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/data/b;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/xiaomi/accountsdk/account/XMPassport$1;->b:[I

    sget-object v5, Lcom/xiaomi/accountsdk/account/data/b;->d:Lcom/xiaomi/accountsdk/account/data/b;

    invoke-virtual {v5}, Lcom/xiaomi/accountsdk/account/data/b;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    .line 2091
    :catch_35
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/g;->values()[Lcom/xiaomi/accountsdk/account/data/g;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    :try_start_3e
    sget-object v4, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v5, Lcom/xiaomi/accountsdk/account/data/g;->a:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v5}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v4, Lcom/xiaomi/accountsdk/account/data/g;->b:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->c:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5c
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->d:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_66

    :catch_66
    :try_start_66
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->e:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_71

    :catch_71
    :try_start_71
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->f:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7c
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->g:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_87} :catch_87

    :catch_87
    :try_start_87
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->h:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_93} :catch_93

    :catch_93
    :try_start_93
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$1;->a:[I

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->i:Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/g;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9f} :catch_9f

    :catch_9f
    return-void
.end method
