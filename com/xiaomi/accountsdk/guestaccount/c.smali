.class public final Lcom/xiaomi/accountsdk/guestaccount/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "userId"

.field private static final b:Ljava/lang/String; = "cUserId"

.field private static final c:Ljava/lang/String; = "passToken"

.field private static final d:Ljava/lang/String; = "userType"

.field private static final e:Ljava/lang/String; = "sid"

.field private static final f:Ljava/lang/String; = "serviceToken"

.field private static final g:Ljava/lang/String; = "security"

.field private static final h:Ljava/lang/String; = "slh"

.field private static final i:Ljava/lang/String; = "ph"

.field private static final j:Ljava/lang/String; = "account"

.field private static final k:Ljava/lang/String; = "service_token"

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String; = "guest_account.db"

.field private static final o:I = 0x2

.field private static final p:Ljava/lang/String; = "GuestAccountDatabaseHe"

.field private static volatile q:Lcom/xiaomi/accountsdk/guestaccount/c;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY, %s TEXT, %s TEXT,%s TEXT, %s INTEGER DEFAULT 0)"

    const/4 v1, 0x6

    .line 30
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "account"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_id"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "userId"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "cUserId"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "passToken"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "userType"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/c;->l:Ljava/lang/String;

    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY, %s TEXT, %s TEXT, %s TEXT,  %s TEXT, %s TEXT, %s TEXT)"

    const/16 v2, 0x8

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "service_token"

    aput-object v3, v2, v4

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "userId"

    aput-object v3, v2, v6

    const-string v3, "sid"

    aput-object v3, v2, v7

    const-string v3, "serviceToken"

    aput-object v3, v2, v8

    const-string v3, "security"

    aput-object v3, v2, v9

    const-string v3, "slh"

    aput-object v3, v2, v1

    const-string v1, "ph"

    const/4 v3, 0x7

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/c;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/c;->q:Lcom/xiaomi/accountsdk/guestaccount/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "guest_account.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 66
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/c;
    .registers 3

    const-class v0, Lcom/xiaomi/accountsdk/guestaccount/c;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/c;->q:Lcom/xiaomi/accountsdk/guestaccount/c;

    if-nez v1, :cond_12

    .line 60
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/guestaccount/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/accountsdk/guestaccount/c;->q:Lcom/xiaomi/accountsdk/guestaccount/c;

    .line 62
    :cond_12
    sget-object p0, Lcom/xiaomi/accountsdk/guestaccount/c;->q:Lcom/xiaomi/accountsdk/guestaccount/c;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 58
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .registers 21

    move-object/from16 v0, p1

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/accountsdk/guestaccount/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "account"

    const-string v3, "userId"

    const-string v4, "cUserId"

    const-string v5, "passToken"

    const-string v6, "userType"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_db

    .line 120
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_db

    :cond_28
    const/4 v3, 0x0

    .line 124
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 125
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 126
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 127
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    .line 128
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_d4

    if-eqz v1, :cond_44

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    return-object v2

    .line 139
    :cond_4b
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/accountsdk/guestaccount/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "service_token"

    const-string v1, "serviceToken"

    const-string v13, "security"

    const-string v14, "slh"

    const-string v15, "ph"

    filled-new-array {v1, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "sid=?"

    new-array v15, v5, [Ljava/lang/String;

    aput-object v0, v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 154
    :try_start_75
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-eqz v11, :cond_96

    .line 155
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_8e
    .catchall {:try_start_75 .. :try_end_8e} :catchall_8f

    goto :goto_99

    :catchall_8f
    move-exception v0

    if-eqz v1, :cond_95

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_95
    throw v0

    :cond_96
    move-object v3, v2

    move-object v5, v3

    move-object v7, v5

    :goto_99
    if-eqz v1, :cond_a2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a2

    :cond_9f
    move-object v3, v2

    move-object v5, v3

    move-object v7, v5

    .line 167
    :cond_a2
    :goto_a2
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;-><init>()V

    .line 168
    invoke-virtual {v1, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v6}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v8}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    .line 171
    invoke-static {v10}, Lcom/xiaomi/accountsdk/guestaccount/data/e;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/e;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v7}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    return-object v0

    :catchall_d4
    move-exception v0

    if-eqz v1, :cond_da

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_da
    throw v0

    :cond_db
    :goto_db
    if-eqz v1, :cond_e0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e0
    return-object v2
.end method

.method public a()V
    .registers 4

    .line 222
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "service_token"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_53

    .line 185
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "userId"

    .line 186
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cUserId"

    .line 187
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "passToken"

    .line 188
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userType"

    .line 189
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    if-eqz v2, :cond_28

    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    iget p1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/e;->c:I

    goto :goto_29

    :cond_28
    const/4 p1, -0x1

    :goto_29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "account"

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_45

    const-string p1, "GuestAccountDatabaseHe"

    const-string v0, "1 entry updated in guest_account/account database"

    .line 193
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_45
    const-string v1, "account"

    .line 195
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string p1, "GuestAccountDatabaseHe"

    const-string v0, "1 entry inserted in guest_account/account database"

    .line 196
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_5b

    .line 199
    :goto_51
    monitor-exit p0

    return-void

    .line 182
    :cond_53
    :try_start_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ga == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    .line 180
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .registers 8

    monitor-enter p0

    if-eqz p1, :cond_58

    .line 206
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sid"

    .line 207
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serviceToken"

    .line 208
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "security"

    .line 209
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "slh"

    .line 210
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ph"

    .line 211
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "service_token"

    const-string v3, "sid=?"

    const/4 v4, 0x1

    .line 213
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_49

    const-string p1, "GuestAccountDatabaseHe"

    const-string v0, "1 entry updated in guest_account/serviceToken database"

    .line 214
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_49
    const-string p1, "service_token"

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string p1, "GuestAccountDatabaseHe"

    const-string v0, "1 entry inserted in guest_account/serviceToken database"

    .line 217
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_60

    .line 219
    :goto_56
    monitor-exit p0

    return-void

    .line 203
    :cond_58
    :try_start_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ga == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_60

    :catchall_60
    move-exception p1

    .line 201
    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 227
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;-><init>()V

    .line 228
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    const-string v0, ""

    .line 229
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    const-string v0, ""

    .line 230
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    const-string v0, ""

    .line 231
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    const-string v0, ""

    .line 232
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/c;->b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 71
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/c;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p1, "GuestAccountDatabaseHe"

    const-string p2, "downgrade ignore"

    .line 77
    invoke-static {p1, p2}, Lcom/xiaomi/accountsdk/utils/d;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-string v0, "GuestAccountDatabaseHe"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->f(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_22

    goto :goto_45

    :cond_22
    const/4 p3, 0x1

    if-ne p2, p3, :cond_45

    .line 87
    :try_start_25
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p2, "ALTER TABLE account ADD COLUMN cUserId TEXT"

    .line 88
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_30} :catch_36
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 93
    :goto_30
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_45

    :catchall_34
    move-exception p2

    goto :goto_41

    :catch_36
    move-exception p2

    :try_start_37
    const-string p3, "GuestAccountDatabaseHe"

    .line 91
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_34

    goto :goto_30

    .line 93
    :goto_41
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2

    :cond_45
    :goto_45
    return-void
.end method
